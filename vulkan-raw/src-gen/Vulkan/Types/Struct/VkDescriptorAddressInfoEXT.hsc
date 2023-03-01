{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkDescriptorAddressInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorAddressInfoEXT" #-} VkDescriptorAddressInfoEXT =
       VkDescriptorAddressInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , address :: VkDeviceAddress
         , range :: VkDeviceSize
         , format :: VkFormat
         }

instance Storable VkDescriptorAddressInfoEXT where
  sizeOf    _ = #{size      VkDescriptorAddressInfoEXT}
  alignment _ = #{alignment VkDescriptorAddressInfoEXT}

  peek ptr = 
    VkDescriptorAddressInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"address" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"range" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"format" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"address" ptr val
    pokeField @"range" ptr val
    pokeField @"format" ptr val

instance Offset "sType" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset VkDescriptorAddressInfoEXT, sType}

instance Offset "pNext" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset VkDescriptorAddressInfoEXT, pNext}

instance Offset "address" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset VkDescriptorAddressInfoEXT, address}

instance Offset "range" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset VkDescriptorAddressInfoEXT, range}

instance Offset "format" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset VkDescriptorAddressInfoEXT, format}

#else

module Vulkan.Types.Struct.VkDescriptorAddressInfoEXT where

#endif
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
  sizeOf    _ = #{size      struct VkDescriptorAddressInfoEXT}
  alignment _ = #{alignment struct VkDescriptorAddressInfoEXT}

  peek ptr = 
    VkDescriptorAddressInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"address" ptr)
       <*> peek (offset @"range" ptr)
       <*> peek (offset @"format" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"address" ptr val
    pokeField @"range" ptr val
    pokeField @"format" ptr val

instance Offset "sType" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset struct VkDescriptorAddressInfoEXT, sType}

instance Offset "pNext" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset struct VkDescriptorAddressInfoEXT, pNext}

instance Offset "address" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset struct VkDescriptorAddressInfoEXT, address}

instance Offset "range" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset struct VkDescriptorAddressInfoEXT, range}

instance Offset "format" VkDescriptorAddressInfoEXT where
  rawOffset = #{offset struct VkDescriptorAddressInfoEXT, format}

#else

module Vulkan.Types.Struct.VkDescriptorAddressInfoEXT where

#endif
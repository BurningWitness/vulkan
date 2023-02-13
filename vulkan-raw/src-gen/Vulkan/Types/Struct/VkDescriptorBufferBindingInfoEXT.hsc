{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkDescriptorBufferBindingInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkBufferUsageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorBufferBindingInfoEXT" #-} VkDescriptorBufferBindingInfoEXT =
       VkDescriptorBufferBindingInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , address :: VkDeviceAddress
         , usage :: VkBufferUsageFlags
         }

instance Storable VkDescriptorBufferBindingInfoEXT where
  sizeOf    _ = #{size      VkDescriptorBufferBindingInfoEXT}
  alignment _ = #{alignment VkDescriptorBufferBindingInfoEXT}

  peek ptr = 
    VkDescriptorBufferBindingInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"address" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"usage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"address" ptr val
    pokeField @"usage" ptr val

instance Offset "sType" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset VkDescriptorBufferBindingInfoEXT, sType}

instance Offset "pNext" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset VkDescriptorBufferBindingInfoEXT, pNext}

instance Offset "address" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset VkDescriptorBufferBindingInfoEXT, address}

instance Offset "usage" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset VkDescriptorBufferBindingInfoEXT, usage}

#else

module Vulkan.Types.Struct.VkDescriptorBufferBindingInfoEXT where

#endif
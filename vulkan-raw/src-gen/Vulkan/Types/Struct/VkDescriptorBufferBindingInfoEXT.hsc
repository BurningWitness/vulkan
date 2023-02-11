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
  sizeOf    _ = #{size      struct VkDescriptorBufferBindingInfoEXT}
  alignment _ = #{alignment struct VkDescriptorBufferBindingInfoEXT}

  peek ptr = 
    VkDescriptorBufferBindingInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"address" ptr)
       <*> peek (offset @"usage" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"address" ptr val
    pokeField @"usage" ptr val

instance Offset "sType" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset struct VkDescriptorBufferBindingInfoEXT, sType}

instance Offset "pNext" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset struct VkDescriptorBufferBindingInfoEXT, pNext}

instance Offset "address" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset struct VkDescriptorBufferBindingInfoEXT, address}

instance Offset "usage" VkDescriptorBufferBindingInfoEXT where
  rawOffset = #{offset struct VkDescriptorBufferBindingInfoEXT, usage}

#else

module Vulkan.Types.Struct.VkDescriptorBufferBindingInfoEXT where

#endif
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Struct.VkDescriptorBufferBindingPushDescriptorBufferHandleEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorBufferBindingPushDescriptorBufferHandleEXT" #-} VkDescriptorBufferBindingPushDescriptorBufferHandleEXT =
       VkDescriptorBufferBindingPushDescriptorBufferHandleEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: VkBuffer
         }

instance Storable VkDescriptorBufferBindingPushDescriptorBufferHandleEXT where
  sizeOf    _ = #{size      VkDescriptorBufferBindingPushDescriptorBufferHandleEXT}
  alignment _ = #{alignment VkDescriptorBufferBindingPushDescriptorBufferHandleEXT}

  peek ptr = 
    VkDescriptorBufferBindingPushDescriptorBufferHandleEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkDescriptorBufferBindingPushDescriptorBufferHandleEXT where
  rawOffset = #{offset VkDescriptorBufferBindingPushDescriptorBufferHandleEXT, sType}

instance Offset "pNext" VkDescriptorBufferBindingPushDescriptorBufferHandleEXT where
  rawOffset = #{offset VkDescriptorBufferBindingPushDescriptorBufferHandleEXT, pNext}

instance Offset "buffer" VkDescriptorBufferBindingPushDescriptorBufferHandleEXT where
  rawOffset = #{offset VkDescriptorBufferBindingPushDescriptorBufferHandleEXT, buffer}

#else

module Vulkan.Types.Struct.VkDescriptorBufferBindingPushDescriptorBufferHandleEXT where

#endif
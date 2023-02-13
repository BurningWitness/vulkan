{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Struct.VkCommandBufferSubmitInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferSubmitInfoKHR" #-} VkCommandBufferSubmitInfoKHR =
       VkCommandBufferSubmitInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , commandBuffer :: VkCommandBuffer
         , deviceMask :: #{type uint32_t}
         }

instance Storable VkCommandBufferSubmitInfoKHR where
  sizeOf    _ = #{size      VkCommandBufferSubmitInfoKHR}
  alignment _ = #{alignment VkCommandBufferSubmitInfoKHR}

  peek ptr = 
    VkCommandBufferSubmitInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"commandBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"commandBuffer" ptr val
    pokeField @"deviceMask" ptr val

instance Offset "sType" VkCommandBufferSubmitInfoKHR where
  rawOffset = #{offset VkCommandBufferSubmitInfoKHR, sType}

instance Offset "pNext" VkCommandBufferSubmitInfoKHR where
  rawOffset = #{offset VkCommandBufferSubmitInfoKHR, pNext}

instance Offset "commandBuffer" VkCommandBufferSubmitInfoKHR where
  rawOffset = #{offset VkCommandBufferSubmitInfoKHR, commandBuffer}

instance Offset "deviceMask" VkCommandBufferSubmitInfoKHR where
  rawOffset = #{offset VkCommandBufferSubmitInfoKHR, deviceMask}

#else

module Vulkan.Types.Struct.VkCommandBufferSubmitInfoKHR where

#endif
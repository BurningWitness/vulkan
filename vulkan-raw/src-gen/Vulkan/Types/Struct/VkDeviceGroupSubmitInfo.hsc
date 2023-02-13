{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkDeviceGroupSubmitInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupSubmitInfo" #-} VkDeviceGroupSubmitInfo =
       VkDeviceGroupSubmitInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreCount :: #{type uint32_t}
         , pWaitSemaphoreDeviceIndices :: Ptr #{type uint32_t}
         , commandBufferCount :: #{type uint32_t}
         , pCommandBufferDeviceMasks :: Ptr #{type uint32_t}
         , signalSemaphoreCount :: #{type uint32_t}
         , pSignalSemaphoreDeviceIndices :: Ptr #{type uint32_t}
         }

instance Storable VkDeviceGroupSubmitInfo where
  sizeOf    _ = #{size      VkDeviceGroupSubmitInfo}
  alignment _ = #{alignment VkDeviceGroupSubmitInfo}

  peek ptr = 
    VkDeviceGroupSubmitInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"waitSemaphoreCount" ptr)
       <*> peek (offset @"pWaitSemaphoreDeviceIndices" ptr)
       <*> peek (offset @"commandBufferCount" ptr)
       <*> peek (offset @"pCommandBufferDeviceMasks" ptr)
       <*> peek (offset @"signalSemaphoreCount" ptr)
       <*> peek (offset @"pSignalSemaphoreDeviceIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreCount" ptr val
    pokeField @"pWaitSemaphoreDeviceIndices" ptr val
    pokeField @"commandBufferCount" ptr val
    pokeField @"pCommandBufferDeviceMasks" ptr val
    pokeField @"signalSemaphoreCount" ptr val
    pokeField @"pSignalSemaphoreDeviceIndices" ptr val

instance Offset "sType" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, sType}

instance Offset "pNext" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, pNext}

instance Offset "waitSemaphoreCount" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, waitSemaphoreCount}

instance Offset "pWaitSemaphoreDeviceIndices" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, pWaitSemaphoreDeviceIndices}

instance Offset "commandBufferCount" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, commandBufferCount}

instance Offset "pCommandBufferDeviceMasks" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, pCommandBufferDeviceMasks}

instance Offset "signalSemaphoreCount" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, signalSemaphoreCount}

instance Offset "pSignalSemaphoreDeviceIndices" VkDeviceGroupSubmitInfo where
  rawOffset = #{offset VkDeviceGroupSubmitInfo, pSignalSemaphoreDeviceIndices}

#else

module Vulkan.Types.Struct.VkDeviceGroupSubmitInfo where

#endif
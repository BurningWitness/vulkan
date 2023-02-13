{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Struct.VkDeviceGroupSubmitInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceGroupSubmitInfoKHR" #-} VkDeviceGroupSubmitInfoKHR =
       VkDeviceGroupSubmitInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , waitSemaphoreCount :: #{type uint32_t}
         , pWaitSemaphoreDeviceIndices :: Ptr #{type uint32_t}
         , commandBufferCount :: #{type uint32_t}
         , pCommandBufferDeviceMasks :: Ptr #{type uint32_t}
         , signalSemaphoreCount :: #{type uint32_t}
         , pSignalSemaphoreDeviceIndices :: Ptr #{type uint32_t}
         }

instance Storable VkDeviceGroupSubmitInfoKHR where
  sizeOf    _ = #{size      VkDeviceGroupSubmitInfoKHR}
  alignment _ = #{alignment VkDeviceGroupSubmitInfoKHR}

  peek ptr = 
    VkDeviceGroupSubmitInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"waitSemaphoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pWaitSemaphoreDeviceIndices" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"commandBufferCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pCommandBufferDeviceMasks" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"signalSemaphoreCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSignalSemaphoreDeviceIndices" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"waitSemaphoreCount" ptr val
    pokeField @"pWaitSemaphoreDeviceIndices" ptr val
    pokeField @"commandBufferCount" ptr val
    pokeField @"pCommandBufferDeviceMasks" ptr val
    pokeField @"signalSemaphoreCount" ptr val
    pokeField @"pSignalSemaphoreDeviceIndices" ptr val

instance Offset "sType" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, sType}

instance Offset "pNext" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, pNext}

instance Offset "waitSemaphoreCount" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, waitSemaphoreCount}

instance Offset "pWaitSemaphoreDeviceIndices" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, pWaitSemaphoreDeviceIndices}

instance Offset "commandBufferCount" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, commandBufferCount}

instance Offset "pCommandBufferDeviceMasks" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, pCommandBufferDeviceMasks}

instance Offset "signalSemaphoreCount" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, signalSemaphoreCount}

instance Offset "pSignalSemaphoreDeviceIndices" VkDeviceGroupSubmitInfoKHR where
  rawOffset = #{offset VkDeviceGroupSubmitInfoKHR, pSignalSemaphoreDeviceIndices}

#else

module Vulkan.Types.Struct.VkDeviceGroupSubmitInfoKHR where

#endif
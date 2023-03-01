{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceExternalSemaphoreInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalSemaphoreInfo" #-} VkPhysicalDeviceExternalSemaphoreInfo =
       VkPhysicalDeviceExternalSemaphoreInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalSemaphoreHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalSemaphoreInfo where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalSemaphoreInfo}
  alignment _ = #{alignment VkPhysicalDeviceExternalSemaphoreInfo}

  peek ptr = 
    VkPhysicalDeviceExternalSemaphoreInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalSemaphoreInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalSemaphoreInfo, sType}

instance Offset "pNext" VkPhysicalDeviceExternalSemaphoreInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalSemaphoreInfo, pNext}

instance Offset "handleType" VkPhysicalDeviceExternalSemaphoreInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalSemaphoreInfo, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalSemaphoreInfo where

#endif
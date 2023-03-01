{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore

module Vulkan.Types.Struct.VkExportSemaphoreCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportSemaphoreCreateInfoKHR" #-} VkExportSemaphoreCreateInfoKHR =
       VkExportSemaphoreCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleTypes :: VkExternalSemaphoreHandleTypeFlags
         }

instance Storable VkExportSemaphoreCreateInfoKHR where
  sizeOf    _ = #{size      VkExportSemaphoreCreateInfoKHR}
  alignment _ = #{alignment VkExportSemaphoreCreateInfoKHR}

  peek ptr = 
    VkExportSemaphoreCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleTypes" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleTypes" ptr val

instance Offset "sType" VkExportSemaphoreCreateInfoKHR where
  rawOffset = #{offset VkExportSemaphoreCreateInfoKHR, sType}

instance Offset "pNext" VkExportSemaphoreCreateInfoKHR where
  rawOffset = #{offset VkExportSemaphoreCreateInfoKHR, pNext}

instance Offset "handleTypes" VkExportSemaphoreCreateInfoKHR where
  rawOffset = #{offset VkExportSemaphoreCreateInfoKHR, handleTypes}

#else

module Vulkan.Types.Struct.VkExportSemaphoreCreateInfoKHR where

#endif
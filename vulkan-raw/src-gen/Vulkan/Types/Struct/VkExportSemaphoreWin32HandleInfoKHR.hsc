{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_win32

module Vulkan.Types.Struct.VkExportSemaphoreWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportSemaphoreWin32HandleInfoKHR" #-} VkExportSemaphoreWin32HandleInfoKHR =
       VkExportSemaphoreWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pAttributes :: Ptr SECURITY_ATTRIBUTES
         , dwAccess :: DWORD
         , name :: LPCWSTR
         }

instance Storable VkExportSemaphoreWin32HandleInfoKHR where
  sizeOf    _ = #{size      VkExportSemaphoreWin32HandleInfoKHR}
  alignment _ = #{alignment VkExportSemaphoreWin32HandleInfoKHR}

  peek ptr = 
    VkExportSemaphoreWin32HandleInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pAttributes" ptr)
       <*> peek (offset @"dwAccess" ptr)
       <*> peek (offset @"name" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pAttributes" ptr val
    pokeField @"dwAccess" ptr val
    pokeField @"name" ptr val

instance Offset "sType" VkExportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset VkExportSemaphoreWin32HandleInfoKHR, sType}

instance Offset "pNext" VkExportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset VkExportSemaphoreWin32HandleInfoKHR, pNext}

instance Offset "pAttributes" VkExportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset VkExportSemaphoreWin32HandleInfoKHR, pAttributes}

instance Offset "dwAccess" VkExportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset VkExportSemaphoreWin32HandleInfoKHR, dwAccess}

instance Offset "name" VkExportSemaphoreWin32HandleInfoKHR where
  rawOffset = #{offset VkExportSemaphoreWin32HandleInfoKHR, name}

#else

module Vulkan.Types.Struct.VkExportSemaphoreWin32HandleInfoKHR where

#endif
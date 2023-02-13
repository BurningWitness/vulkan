{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_win32

module Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkExportMemoryWin32HandleInfoKHR" #-} VkExportMemoryWin32HandleInfoKHR =
       VkExportMemoryWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pAttributes :: Ptr SECURITY_ATTRIBUTES
         , dwAccess :: DWORD
         , name :: LPCWSTR
         }

instance Storable VkExportMemoryWin32HandleInfoKHR where
  sizeOf    _ = #{size      VkExportMemoryWin32HandleInfoKHR}
  alignment _ = #{alignment VkExportMemoryWin32HandleInfoKHR}

  peek ptr = 
    VkExportMemoryWin32HandleInfoKHR
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

instance Offset "sType" VkExportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoKHR, sType}

instance Offset "pNext" VkExportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoKHR, pNext}

instance Offset "pAttributes" VkExportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoKHR, pAttributes}

instance Offset "dwAccess" VkExportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoKHR, dwAccess}

instance Offset "name" VkExportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkExportMemoryWin32HandleInfoKHR, name}

#else

module Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoKHR where

#endif
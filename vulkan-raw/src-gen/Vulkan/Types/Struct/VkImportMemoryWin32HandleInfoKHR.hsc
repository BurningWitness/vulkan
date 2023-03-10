{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_win32

module Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMemoryWin32HandleInfoKHR" #-} VkImportMemoryWin32HandleInfoKHR =
       VkImportMemoryWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         , handle :: HANDLE
         , name :: LPCWSTR
         }

instance Storable VkImportMemoryWin32HandleInfoKHR where
  sizeOf    _ = #{size      VkImportMemoryWin32HandleInfoKHR}
  alignment _ = #{alignment VkImportMemoryWin32HandleInfoKHR}

  peek ptr = 
    VkImportMemoryWin32HandleInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"name" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val
    pokeField @"handle" ptr val
    pokeField @"name" ptr val

instance Offset "sType" VkImportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkImportMemoryWin32HandleInfoKHR, sType}

instance Offset "pNext" VkImportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkImportMemoryWin32HandleInfoKHR, pNext}

instance Offset "handleType" VkImportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkImportMemoryWin32HandleInfoKHR, handleType}

instance Offset "handle" VkImportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkImportMemoryWin32HandleInfoKHR, handle}

instance Offset "name" VkImportMemoryWin32HandleInfoKHR where
  rawOffset = #{offset VkImportMemoryWin32HandleInfoKHR, name}

#else

module Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoKHR where

#endif
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_win32

module Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMemoryWin32HandleInfoNV" #-} VkImportMemoryWin32HandleInfoNV =
       VkImportMemoryWin32HandleInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalMemoryHandleTypeFlagsNV
         , handle :: HANDLE
         }

instance Storable VkImportMemoryWin32HandleInfoNV where
  sizeOf    _ = #{size      struct VkImportMemoryWin32HandleInfoNV}
  alignment _ = #{alignment struct VkImportMemoryWin32HandleInfoNV}

  peek ptr = 
    VkImportMemoryWin32HandleInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"handle" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val
    pokeField @"handle" ptr val

instance Offset "sType" VkImportMemoryWin32HandleInfoNV where
  rawOffset = #{offset struct VkImportMemoryWin32HandleInfoNV, sType}

instance Offset "pNext" VkImportMemoryWin32HandleInfoNV where
  rawOffset = #{offset struct VkImportMemoryWin32HandleInfoNV, pNext}

instance Offset "handleType" VkImportMemoryWin32HandleInfoNV where
  rawOffset = #{offset struct VkImportMemoryWin32HandleInfoNV, handleType}

instance Offset "handle" VkImportMemoryWin32HandleInfoNV where
  rawOffset = #{offset struct VkImportMemoryWin32HandleInfoNV, handle}

#else

module Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoNV where

#endif
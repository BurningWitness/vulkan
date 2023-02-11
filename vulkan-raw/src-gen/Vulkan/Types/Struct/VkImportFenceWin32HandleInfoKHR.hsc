{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_win32

module Vulkan.Types.Struct.VkImportFenceWin32HandleInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkFenceImportFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkImportFenceWin32HandleInfoKHR" #-} VkImportFenceWin32HandleInfoKHR =
       VkImportFenceWin32HandleInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fence :: VkFence
         , flags :: VkFenceImportFlags
         , handleType :: VkExternalFenceHandleTypeFlagBits
         , handle :: HANDLE
         , name :: LPCWSTR
         }

instance Storable VkImportFenceWin32HandleInfoKHR where
  sizeOf    _ = #{size      struct VkImportFenceWin32HandleInfoKHR}
  alignment _ = #{alignment struct VkImportFenceWin32HandleInfoKHR}

  peek ptr = 
    VkImportFenceWin32HandleInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fence" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"handleType" ptr)
       <*> peek (offset @"handle" ptr)
       <*> peek (offset @"name" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fence" ptr val
    pokeField @"flags" ptr val
    pokeField @"handleType" ptr val
    pokeField @"handle" ptr val
    pokeField @"name" ptr val

instance Offset "sType" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportFenceWin32HandleInfoKHR, sType}

instance Offset "pNext" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportFenceWin32HandleInfoKHR, pNext}

instance Offset "fence" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportFenceWin32HandleInfoKHR, fence}

instance Offset "flags" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportFenceWin32HandleInfoKHR, flags}

instance Offset "handleType" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportFenceWin32HandleInfoKHR, handleType}

instance Offset "handle" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportFenceWin32HandleInfoKHR, handle}

instance Offset "name" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset struct VkImportFenceWin32HandleInfoKHR, name}

#else

module Vulkan.Types.Struct.VkImportFenceWin32HandleInfoKHR where

#endif
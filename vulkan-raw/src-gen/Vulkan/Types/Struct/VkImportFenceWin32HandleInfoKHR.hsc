{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkImportFenceWin32HandleInfoKHR}
  alignment _ = #{alignment VkImportFenceWin32HandleInfoKHR}

  peek ptr = 
    VkImportFenceWin32HandleInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fence" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"name" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fence" ptr val
    pokeField @"flags" ptr val
    pokeField @"handleType" ptr val
    pokeField @"handle" ptr val
    pokeField @"name" ptr val

instance Offset "sType" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkImportFenceWin32HandleInfoKHR, sType}

instance Offset "pNext" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkImportFenceWin32HandleInfoKHR, pNext}

instance Offset "fence" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkImportFenceWin32HandleInfoKHR, fence}

instance Offset "flags" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkImportFenceWin32HandleInfoKHR, flags}

instance Offset "handleType" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkImportFenceWin32HandleInfoKHR, handleType}

instance Offset "handle" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkImportFenceWin32HandleInfoKHR, handle}

instance Offset "name" VkImportFenceWin32HandleInfoKHR where
  rawOffset = #{offset VkImportFenceWin32HandleInfoKHR, name}

#else

module Vulkan.Types.Struct.VkImportFenceWin32HandleInfoKHR where

#endif
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_win32_surface

module Vulkan.Types.Struct.VkWin32SurfaceCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkWin32SurfaceCreateFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkWin32SurfaceCreateInfoKHR" #-} VkWin32SurfaceCreateInfoKHR =
       VkWin32SurfaceCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkWin32SurfaceCreateFlagsKHR
         , hinstance :: HINSTANCE
         , hwnd :: HWND
         }

instance Storable VkWin32SurfaceCreateInfoKHR where
  sizeOf    _ = #{size      VkWin32SurfaceCreateInfoKHR}
  alignment _ = #{alignment VkWin32SurfaceCreateInfoKHR}

  peek ptr = 
    VkWin32SurfaceCreateInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hinstance" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hwnd" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"hinstance" ptr val
    pokeField @"hwnd" ptr val

instance Offset "sType" VkWin32SurfaceCreateInfoKHR where
  rawOffset = #{offset VkWin32SurfaceCreateInfoKHR, sType}

instance Offset "pNext" VkWin32SurfaceCreateInfoKHR where
  rawOffset = #{offset VkWin32SurfaceCreateInfoKHR, pNext}

instance Offset "flags" VkWin32SurfaceCreateInfoKHR where
  rawOffset = #{offset VkWin32SurfaceCreateInfoKHR, flags}

instance Offset "hinstance" VkWin32SurfaceCreateInfoKHR where
  rawOffset = #{offset VkWin32SurfaceCreateInfoKHR, hinstance}

instance Offset "hwnd" VkWin32SurfaceCreateInfoKHR where
  rawOffset = #{offset VkWin32SurfaceCreateInfoKHR, hwnd}

#else

module Vulkan.Types.Struct.VkWin32SurfaceCreateInfoKHR where

#endif
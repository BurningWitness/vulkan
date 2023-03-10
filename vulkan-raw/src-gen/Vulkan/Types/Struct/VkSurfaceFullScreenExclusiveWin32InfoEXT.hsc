{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_full_screen_exclusive && VK_KHR_win32_surface

module Vulkan.Types.Struct.VkSurfaceFullScreenExclusiveWin32InfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceFullScreenExclusiveWin32InfoEXT" #-} VkSurfaceFullScreenExclusiveWin32InfoEXT =
       VkSurfaceFullScreenExclusiveWin32InfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , hmonitor :: HMONITOR
         }

instance Storable VkSurfaceFullScreenExclusiveWin32InfoEXT where
  sizeOf    _ = #{size      VkSurfaceFullScreenExclusiveWin32InfoEXT}
  alignment _ = #{alignment VkSurfaceFullScreenExclusiveWin32InfoEXT}

  peek ptr = 
    VkSurfaceFullScreenExclusiveWin32InfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hmonitor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"hmonitor" ptr val

instance Offset "sType" VkSurfaceFullScreenExclusiveWin32InfoEXT where
  rawOffset = #{offset VkSurfaceFullScreenExclusiveWin32InfoEXT, sType}

instance Offset "pNext" VkSurfaceFullScreenExclusiveWin32InfoEXT where
  rawOffset = #{offset VkSurfaceFullScreenExclusiveWin32InfoEXT, pNext}

instance Offset "hmonitor" VkSurfaceFullScreenExclusiveWin32InfoEXT where
  rawOffset = #{offset VkSurfaceFullScreenExclusiveWin32InfoEXT, hmonitor}

#else

module Vulkan.Types.Struct.VkSurfaceFullScreenExclusiveWin32InfoEXT where

#endif
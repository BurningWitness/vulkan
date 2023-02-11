{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NN_vi_surface

module Vulkan.Types.Struct.VkViSurfaceCreateInfoNN where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkViSurfaceCreateFlagsNN



data {-# CTYPE "vulkan/vulkan.h" "VkViSurfaceCreateInfoNN" #-} VkViSurfaceCreateInfoNN =
       VkViSurfaceCreateInfoNN
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkViSurfaceCreateFlagsNN
         , window :: Ptr ()
         }

instance Storable VkViSurfaceCreateInfoNN where
  sizeOf    _ = #{size      struct VkViSurfaceCreateInfoNN}
  alignment _ = #{alignment struct VkViSurfaceCreateInfoNN}

  peek ptr = 
    VkViSurfaceCreateInfoNN
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"window" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"window" ptr val

instance Offset "sType" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset struct VkViSurfaceCreateInfoNN, sType}

instance Offset "pNext" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset struct VkViSurfaceCreateInfoNN, pNext}

instance Offset "flags" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset struct VkViSurfaceCreateInfoNN, flags}

instance Offset "window" VkViSurfaceCreateInfoNN where
  rawOffset = #{offset struct VkViSurfaceCreateInfoNN, window}

#else

module Vulkan.Types.Struct.VkViSurfaceCreateInfoNN where

#endif
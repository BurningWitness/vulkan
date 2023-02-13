{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_present_barrier

module Vulkan.Types.Struct.VkSurfaceCapabilitiesPresentBarrierNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceCapabilitiesPresentBarrierNV" #-} VkSurfaceCapabilitiesPresentBarrierNV =
       VkSurfaceCapabilitiesPresentBarrierNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentBarrierSupported :: VkBool32
         }

instance Storable VkSurfaceCapabilitiesPresentBarrierNV where
  sizeOf    _ = #{size      VkSurfaceCapabilitiesPresentBarrierNV}
  alignment _ = #{alignment VkSurfaceCapabilitiesPresentBarrierNV}

  peek ptr = 
    VkSurfaceCapabilitiesPresentBarrierNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentBarrierSupported" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentBarrierSupported" ptr val

instance Offset "sType" VkSurfaceCapabilitiesPresentBarrierNV where
  rawOffset = #{offset VkSurfaceCapabilitiesPresentBarrierNV, sType}

instance Offset "pNext" VkSurfaceCapabilitiesPresentBarrierNV where
  rawOffset = #{offset VkSurfaceCapabilitiesPresentBarrierNV, pNext}

instance Offset "presentBarrierSupported" VkSurfaceCapabilitiesPresentBarrierNV where
  rawOffset = #{offset VkSurfaceCapabilitiesPresentBarrierNV, presentBarrierSupported}

#else

module Vulkan.Types.Struct.VkSurfaceCapabilitiesPresentBarrierNV where

#endif
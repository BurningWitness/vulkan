{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_texture_gather_bias_lod

module Vulkan.Types.Struct.VkTextureLODGatherFormatPropertiesAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkTextureLODGatherFormatPropertiesAMD" #-} VkTextureLODGatherFormatPropertiesAMD =
       VkTextureLODGatherFormatPropertiesAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , supportsTextureGatherLODBiasAMD :: VkBool32
         }

instance Storable VkTextureLODGatherFormatPropertiesAMD where
  sizeOf    _ = #{size      struct VkTextureLODGatherFormatPropertiesAMD}
  alignment _ = #{alignment struct VkTextureLODGatherFormatPropertiesAMD}

  peek ptr = 
    VkTextureLODGatherFormatPropertiesAMD
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"supportsTextureGatherLODBiasAMD" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"supportsTextureGatherLODBiasAMD" ptr val

instance Offset "sType" VkTextureLODGatherFormatPropertiesAMD where
  rawOffset = #{offset struct VkTextureLODGatherFormatPropertiesAMD, sType}

instance Offset "pNext" VkTextureLODGatherFormatPropertiesAMD where
  rawOffset = #{offset struct VkTextureLODGatherFormatPropertiesAMD, pNext}

instance Offset "supportsTextureGatherLODBiasAMD" VkTextureLODGatherFormatPropertiesAMD where
  rawOffset = #{offset struct VkTextureLODGatherFormatPropertiesAMD, supportsTextureGatherLODBiasAMD}

#else

module Vulkan.Types.Struct.VkTextureLODGatherFormatPropertiesAMD where

#endif
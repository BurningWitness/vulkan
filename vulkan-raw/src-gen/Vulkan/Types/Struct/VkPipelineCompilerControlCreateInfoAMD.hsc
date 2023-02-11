{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_AMD_pipeline_compiler_control

module Vulkan.Types.Struct.VkPipelineCompilerControlCreateInfoAMD where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCompilerControlFlagsAMD
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCompilerControlCreateInfoAMD" #-} VkPipelineCompilerControlCreateInfoAMD =
       VkPipelineCompilerControlCreateInfoAMD
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , compilerControlFlags :: VkPipelineCompilerControlFlagsAMD
         }

instance Storable VkPipelineCompilerControlCreateInfoAMD where
  sizeOf    _ = #{size      struct VkPipelineCompilerControlCreateInfoAMD}
  alignment _ = #{alignment struct VkPipelineCompilerControlCreateInfoAMD}

  peek ptr = 
    VkPipelineCompilerControlCreateInfoAMD
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"compilerControlFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"compilerControlFlags" ptr val

instance Offset "sType" VkPipelineCompilerControlCreateInfoAMD where
  rawOffset = #{offset struct VkPipelineCompilerControlCreateInfoAMD, sType}

instance Offset "pNext" VkPipelineCompilerControlCreateInfoAMD where
  rawOffset = #{offset struct VkPipelineCompilerControlCreateInfoAMD, pNext}

instance Offset "compilerControlFlags" VkPipelineCompilerControlCreateInfoAMD where
  rawOffset = #{offset struct VkPipelineCompilerControlCreateInfoAMD, compilerControlFlags}

#else

module Vulkan.Types.Struct.VkPipelineCompilerControlCreateInfoAMD where

#endif
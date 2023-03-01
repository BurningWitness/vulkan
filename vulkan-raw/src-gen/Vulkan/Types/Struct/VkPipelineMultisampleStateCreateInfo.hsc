{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineMultisampleStateCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineMultisampleStateCreateFlags
import Vulkan.Types.Enum.VkSampleCountFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineMultisampleStateCreateInfo" #-} VkPipelineMultisampleStateCreateInfo =
       VkPipelineMultisampleStateCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineMultisampleStateCreateFlags
         , rasterizationSamples :: VkSampleCountFlagBits -- ^ Number of samples used for rasterization
         , sampleShadingEnable :: VkBool32 -- ^ optional (GL45)
         , minSampleShading :: #{type float} -- ^ optional (GL45)
         , pSampleMask :: Ptr VkSampleMask -- ^ Array of sampleMask words
         , alphaToCoverageEnable :: VkBool32
         , alphaToOneEnable :: VkBool32
         }

instance Storable VkPipelineMultisampleStateCreateInfo where
  sizeOf    _ = #{size      VkPipelineMultisampleStateCreateInfo}
  alignment _ = #{alignment VkPipelineMultisampleStateCreateInfo}

  peek ptr = 
    VkPipelineMultisampleStateCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationSamples" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sampleShadingEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minSampleShading" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pSampleMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"alphaToCoverageEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"alphaToOneEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"rasterizationSamples" ptr val
    pokeField @"sampleShadingEnable" ptr val
    pokeField @"minSampleShading" ptr val
    pokeField @"pSampleMask" ptr val
    pokeField @"alphaToCoverageEnable" ptr val
    pokeField @"alphaToOneEnable" ptr val

instance Offset "sType" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, sType}

instance Offset "pNext" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, pNext}

instance Offset "flags" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, flags}

instance Offset "rasterizationSamples" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, rasterizationSamples}

instance Offset "sampleShadingEnable" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, sampleShadingEnable}

instance Offset "minSampleShading" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, minSampleShading}

instance Offset "pSampleMask" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, pSampleMask}

instance Offset "alphaToCoverageEnable" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, alphaToCoverageEnable}

instance Offset "alphaToOneEnable" VkPipelineMultisampleStateCreateInfo where
  rawOffset = #{offset VkPipelineMultisampleStateCreateInfo, alphaToOneEnable}
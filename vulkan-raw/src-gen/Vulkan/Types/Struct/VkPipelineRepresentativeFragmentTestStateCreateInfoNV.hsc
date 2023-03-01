{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_representative_fragment_test

module Vulkan.Types.Struct.VkPipelineRepresentativeFragmentTestStateCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineRepresentativeFragmentTestStateCreateInfoNV" #-} VkPipelineRepresentativeFragmentTestStateCreateInfoNV =
       VkPipelineRepresentativeFragmentTestStateCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , representativeFragmentTestEnable :: VkBool32
         }

instance Storable VkPipelineRepresentativeFragmentTestStateCreateInfoNV where
  sizeOf    _ = #{size      VkPipelineRepresentativeFragmentTestStateCreateInfoNV}
  alignment _ = #{alignment VkPipelineRepresentativeFragmentTestStateCreateInfoNV}

  peek ptr = 
    VkPipelineRepresentativeFragmentTestStateCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"representativeFragmentTestEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"representativeFragmentTestEnable" ptr val

instance Offset "sType" VkPipelineRepresentativeFragmentTestStateCreateInfoNV where
  rawOffset = #{offset VkPipelineRepresentativeFragmentTestStateCreateInfoNV, sType}

instance Offset "pNext" VkPipelineRepresentativeFragmentTestStateCreateInfoNV where
  rawOffset = #{offset VkPipelineRepresentativeFragmentTestStateCreateInfoNV, pNext}

instance Offset "representativeFragmentTestEnable" VkPipelineRepresentativeFragmentTestStateCreateInfoNV where
  rawOffset = #{offset VkPipelineRepresentativeFragmentTestStateCreateInfoNV, representativeFragmentTestEnable}

#else

module Vulkan.Types.Struct.VkPipelineRepresentativeFragmentTestStateCreateInfoNV where

#endif